let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_loc_list_height = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Automatically save file
autocmd FocusLost * :SyntasticCheck
