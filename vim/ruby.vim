autocmd FileType ruby :iabbrev <buffer> pry! require "byebug";byebug
autocmd FileType ruby :iabbrev <buffer> arlog! ActiveRecord::Base.logger = Logger.new(STDOUT);

function InitFile()
    if @% == ""
        " No filename for current buffer
        silent !$HOME/.dotfiles/ruby/snippets/init_file %
    elseif filereadable(@%) == 0
        " File doesn't exist yet
        silent !$HOME/.dotfiles/ruby/snippets/init_file %
    elseif line('$') == 1 && col('$') == 1
        " File is empty
        silent !$HOME/.dotfiles/ruby/snippets/init_file %
    endif
endfunction

au BufReadPost *.rb call InitFile()

" autocmd BufWritePost Gemfile,*.gemspec AsyncRun bundle install
autocmd BufWritePost *.html.slim AsyncRun bundle exec slim-lint

" autocmd BufWritePost *.rb AsyncRun -post=checktime rubocop % --auto-correct --config $HOME/.dotfiles/ruby/rubocop.yml

autocmd BufNewFile,BufRead Brewfile set filetype=ruby

autocmd FileType ruby setlocal colorcolumn=100

nmap <Leader>cc :! grep "module\\\|class\\\|private\\\|def " %<Enter>

nnoremap <Leader>tt :grep! "create_table" db/schema.rb<CR>:cw<CR><CR>


command Slim %!$HOME/.dotfiles/ruby/slimify.rb
