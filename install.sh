set -e

# Change shell to zsh
chsh -s $(which zsh)

#Symlink .zshrc and .vimrc
ln -s $HOME/.dotfiles/vim/vimrc $HOME/.vimrc
ln -s $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig

# Install Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +BundleInstall +q

# Brew specific installs
brew install the_silver_searcher
brew install rbenv-bundler
brew install autojump

rbenv bundler on

gem install hub
gem install rubocop-git
