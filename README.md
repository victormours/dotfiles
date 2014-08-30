.dotfiles
===

These are mostly stolen from [skwp's amazing Yadr](https://github.com/skwp/dotfiles).

Featuring:
=
- zsh
- Macvim
- git
- autojump

Installing
===
```
git clone git://github.com/victormours/dotfiles.git ~/.dotfiles
~/.dotfiles/install.sh
```
- Install iTerm2
- Install Solarized for iTerm2


Features
===
Almost all you need to DEVELOP HARDER!

Zsh
===
- Explicit aliases!
- `o`: Alias for `open_project` cd your shell to the given project (with autojump), and opens MacVim there.
- `m`: alias for `mvim`
- `v`: alias for `vim`
- `md`: make a new dir and cd into it

(Mac)Vim
===
- `,f` opens a file tree
- `Ctrl` with `hjkl` moves from split to split
- `vv` opens a vertical split
- `ss` opens a horizontal one
- `Q` closes a split

Git
===
- Super fast aliases (see `git/aliases`)
- A couple of nice shortcuts:
  - `gac "my commit message"` to add all and commit
  - `gunc` to uncommit
  - `guns` to unstage
- My personal favorites:
  - `gplr` for `git pull --rebase`
  - `gps` to push
  - `gri` fo `git rebase -i`

