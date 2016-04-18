set -e

# Change shell to zsh
chsh -s $(which zsh)

#Symlink .zshrc and .vimrc
ln -s $HOME/.dotfiles/vim/vimrc $HOME/.vimrc
ln -s $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig
ln -s $HOME/.dotfiles/gemrc $HOME/.gemrc

# Install Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +BundleInstall +q

# Brew specific installs
brew install the_silver_searcher
brew install rbenv-bundler
brew install autojump
brew install git

rbenv bundler on

gem install hub
gem install rubocop-git

git clone git://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.dotfiles/zsh-syntax-highlighting

echo "# Add machine-specific config here (this file and the local directory will be ignored by git)" > $HOME/.dotfiles/local/zshrc

echo "Done installing! You can customize your local zsh config by editing ~/.dotfiles/local/zshrc"
