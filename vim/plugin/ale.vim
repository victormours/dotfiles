let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1

let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '']
set statusline+=%=
set statusline+=\ %{ALEGetStatusLine()}
