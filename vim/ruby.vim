autocmd FileType ruby :iabbrev <buffer> pry! require 'pry'; binding.pry;
autocmd FileType ruby :iabbrev <buffer> spec! require 'spec_helper'

command InitFile read !$HOME/.dotfiles/ruby/snippets/init_file %

