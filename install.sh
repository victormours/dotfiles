set -e


#Symlink .zshrc and .vimrc
ln -s $HOME/.dotfiles/vim/vimrc $HOME/.vimrc
ln -s $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig

# Install Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +BundleInstall +q

brew install fish
cp /usr/local/bin/fish /etc/shells

# Change shell to fish
chsh -s $(which fish)

brew install the_silver_searcher
brew install rbenv-bundler
brew install autojump

rbenv bundler on

gem install hub
