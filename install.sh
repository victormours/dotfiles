set -e

# Change shell to zsh
chsh -s $(which zsh)

echo -n "Symlinking dotfiles..."
#Symlink .zshrc and .vimrc
ln -s $HOME/.dotfiles/vim/vimrc $HOME/.vimrc
mkdir $HOME/.vim/
ln -s $HOME/.dotfiles/vim/plugin $HOME/.vim/plugin
ln -s $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/zsh/zshenv $HOME/.zshenv
ln -s $HOME/.dotfiles/tmux/tmux.conf $HOME/.tmux.conf
ln -s $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig
ln -s $HOME/.dotfiles/gemrc $HOME/.gemrc
ln -s $HOME/.dotfiles/javascript/jshintrc $HOME/.jshintrc
ln -s $HOME/.dotfiles/ruby/rubocop.yml $HOME/.rubocop.yml
echo 'done!'

# Install Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +q

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle
brew link --overwrite macvim

gem install hub
gem install rubocop-git

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.dotfiles/zsh-syntax-highlighting -- depth 1
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.dotfiles/zsh-autosuggestions -- depth 1

npm install -g eslint eslint-plugin-react eslint-plugin-jsx-a11y eslint-plugin-import eslint-config-airbnb

echo "# Add machine-specific config here (this file and the local directory will be ignored by git)" > $HOME/.dotfiles/local/zshrc

echo "Done installing! You can customize your local zsh config by editing ~/.dotfiles/local/zshrc"
