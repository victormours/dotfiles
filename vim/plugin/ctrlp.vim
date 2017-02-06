let g:ctrlp_use_caching=0

if has("gui_running")
  " Open a fuzzy file finder with Space d
  " Only if fzf is not available
  let g:ctrlp_map = '<Leader>d'
endif

let g:ctrlp_user_command = 'rg --files %s'

let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
