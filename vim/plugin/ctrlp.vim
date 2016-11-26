let g:ctrlp_use_caching=0

" Open a fuzzy file finder with Space d
let g:ctrlp_map = '<Leader>d'

" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command = 'ag %s --ignore vendor -l --nocolor -g ""'

let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
