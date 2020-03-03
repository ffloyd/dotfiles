# My personal dotfiles for Mac OS

TODO: make this README fun.

Features:

* Dotfiles manager: [chezmoi](https://github.com/twpayne/chezmoi)
* [ZSH](https://www.zsh.org/) + [zplug](https://github.com/zplug/zplug) as a
  shell and shell configuration framework.
* [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle) is used to
  track all installed formulas, casks and app store applications.
* [1 Password](https://1password.com/) as a password manager.
* [Emacs](https://www.gnu.org/software/emacs/) is configured using
  [DOOM](https://github.com/hlissner/doom-emacs) framework.
* [NeoVim](https://neovim.io/) with a simple configuration (for
  a fast one-file edits without leaving terminal).

Installation on a clean system:

1. Start with configuration of your background desctop picture, OS color scheme,
   etc. In other words: go over each section in Mac OS _System Preferences_.
1. Remap `Caps Lock` to key to be `Control` (_System Preferences -> Keyboard ->
   Modifier Keys_). Do other remaps which you prefer.
1. [Install Homebrew](https://brew.sh/).
1. [Generate a new ssh key and upload it to GitHub.](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
1. Install chezmoi: `brew install twpayne/taps/chezmoi`.
1. Fetch the dotfiles: `chezmoi init git@github.com:ffloyd/dotfiles.git`.
1. Install dotfiles: `chezmoi apply`.
1. Install the software: `cd && brew bundle --verbose` (TODO: use a global
   .Brewfile and `--global` CLI flag).
1. Initialize 1Password.
1. Set Brave as a default browser, add to Brave Sync Chain and integrate 1Password.

1. Initialize Dash if you've bought it and have a licence.
