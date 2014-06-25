# Change shell to zsh
chsh -s $(which zsh)

#Symlink .zshrc and .vimrc
ln -s $HOME/dev/dotfiles/vim/vimrc $HOME/.vimrc
ln -s $HOME/dev/dotfiles/zsh/zshrc $HOME/.zshrc

# Install Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
