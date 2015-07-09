let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

autocmd FocusLost * :SyntasticCheck
