autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

