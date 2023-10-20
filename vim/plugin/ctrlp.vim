let g:ctrlp_use_caching=0

if has("gui_running")
  " Open a fuzzy file finder with Space d
  " Only if fzf is not available
  let g:ctrlp_map = '<Leader>d'
endif

let g:ctrlp_user_command = 'rg --files %s'

function! LazyP()
  let g:ctrlp_default_input = expand('<cword>')
  CtrlP
  let g:ctrlp_default_input = ''
endfunction

" open fuzzy file finder searching for word under cursor
nnoremap <Leader>a :call LazyP()<CR>
