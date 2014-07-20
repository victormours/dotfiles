# Change shell to zsh
chsh -s $(which zsh)

#Symlink .zshrc and .vimrc
ln -s $HOME/dev/dotfiles/vim/vimrc $HOME/.vimrc
ln -s $HOME/dev/dotfiles/zsh/zshrc $HOME/.zshrc

# Install Autojump
git clone git://github.com/joelthelion/autojump.git ~/.dotfiles/autojump
~/.dotfiles/autojump/install.py


# Install Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim



