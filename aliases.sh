for file in ~/.dotfiles/*/aliases.sh; do
  source "$file"
done

# Edit and reload aliases
function ae {
  alias_category=$1
  cd $HOME/.dotfiles
  vim $HOME/.dotfiles/$alias_category/aliases.sh
  git commit -am "Improving aliases"
  git push
  cd -
  source $HOME/.dotfiles/aliases.sh
}

alias ar='source $HOME/.dotfiles/aliases.sh'

