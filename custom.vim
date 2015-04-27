"##############################################################"
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker :
"
" Vim Configuration
"
" Hangchen YU
"
" This is the personal Vim configuration of Hangchen YU.
"
" File: custom.vim
"
"##############################################################"

" Highlighting {

    " Highlighting unwanted white spaces
    " Show leading whitespace that includes spaces, and trailing whitespace.
    autocmd BufWinEnter * match ExtraWhitespace /^\s* \s*\|\s\+$/
    highlight ExtraWhitespace ctermbg=red guibg=red
    match ExtraWhitespace /\s\+$/
    autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    autocmd InsertLeave * match ExtraWhitespace /\s\+$/
    autocmd BufWinLeave * call clearmatches()

    augroup HiglightTODO
    autocmd!
    autocmd BufWinEnter,WinEnter,VimEnter * :silent! call matchadd('Todo', 'TODO\|FIXME', -1)
    augroup END

" }
