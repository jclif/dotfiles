# jareds.dotfiles

These are the dotfiles I use for work and pleasure. They're managed by [Chezmoi](https://github.com/twpayne/chezmoi), a tool for secure and declarative dotfile management.

## Setup

1. Install Homebrew

1. Install chezmoi
```bash
brew install chezmoi
```

1. Get and run the dotfiles locally
```bash
chezmoi init --apply --verbose https://github.com/jclif/dotfiles.git
```

1. Set powerline font to Hack Nerd
1. Install global languages
```bash
cd ~/ && asdf install
```
