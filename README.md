# .dotfiles
## All you need to DEVELOP HARDER!

These are mostly stolen from [skwp's amazing Yadr](https://github.com/skwp/dotfiles).

Installing
===
```
git clone git://github.com/victormours/dotfiles.git ~/.dotfiles
~/.dotfiles/install.sh
```
- Modify the gitconfig so that you don't use my name ;)
- Install iTerm2
- Install [Solarized for iTerm2](https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized)
- Recommended: remap Capslock to Escape with [Seil](https://pqrs.org/osx/karabiner/seil.html.en)

## What you get
- awesome shell aliases
- blazingly fast git workflow
- sweet vim setup
- and much more!

Zsh
===
- Explicit aliases! They expand automatically when you use them.
- Mandatory aliases: so you don't forget to use them.
![Mandatory Aliases](https://cloud.githubusercontent.com/assets/1840367/7302861/9e437a96-e9ec-11e4-9978-9f33f21bd7d9.gif)

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


Customizing
===
- If you want to add a machine-specific zsh config, you can do so by adding a zshrc file in the `local/` directory. `local/zshrc` will be loaded after `zsh/zshrc`.

