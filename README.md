# .dotfiles
## All you need to DEVELOP HARDER!

These are mostly stolen from [skwp's amazing Yadr](https://github.com/skwp/dotfiles).

## What you get
- awesome shell aliases
- blazingly fast git workflow
- sweet vim setup
- and much more!

Installing
===
```
git clone git://github.com/victormours/dotfiles.git ~/.dotfiles
~/.dotfiles/install.sh
```
- Install iTerm2
- Install Solarized for iTerm2
- Recommended: remap Capslock to Escape with [Seil](https://pqrs.org/osx/karabiner/seil.html.en)

Zsh
===
- Explicit aliases! They expand automatically when you use them.
- `m`: alias for `mvim`
- `md`: make a new dir and cd into it

(Mac)Vim
===
- Space is the leader!
- `<Space>f` opens a file tree
- `<Space>d` opensa a fuzzy file finder
- `Ctrl` with `hjkl` moves from split to split
- `vv` opens a vertical split
- `ss` opens a horizontal one
- `Q` closes a split
- `<Space>g` opens a grep of the word under the cursor

Abbreviations!
-
- `pry!` for `require 'pry'; binding.pry`
- `spec!` for `require 'spec_helper'`

Git(Hub)
===
Super fast aliases (see `git/aliases`)

- `c my-branch` to checkout
- `l` to pull
- `gc "my commit message"` to add all and commit
- `p` to push
- `prm` to open a pull request towards the master branch
- `prs` to see all the pull requests in the current repo


