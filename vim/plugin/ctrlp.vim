let g:ctrlp_use_caching=0

let g:ctrlp_user_command = 'rg --files %s'

function OpenFuzzyFinder()
  :NERDTreeClose
  :CtrlP
endfunction

nnoremap <silent> <Leader>d :call OpenFuzzyFinder()<CR>

function! LazyP()
  let g:ctrlp_default_input = expand('<cword>')
  CtrlP
  let g:ctrlp_default_input = ''
endfunction

" open fuzzy file finder searching for word under cursor
nnoremap <Leader>a :call LazyP()<CR>
