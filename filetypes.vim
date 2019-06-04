"##############################################################"
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker :
"
" Vim Configuration
"
" Hangchen YU
"
" This is the personal Vim configuration of Hangchen YU.
"
" File: filetype.vim
"
"##############################################################"

if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  au! BufRead,BufNewFile *.zcml     set filetype=xml
  au! BufRead,BufNewFile *.rst      setfiletype rst
  au! BufRead,BufNewFile *.txt      setfiletype rst
  au! BufRead,BufNewFile *.md       setfiletype markdown
  au! BufRead,BufNewFile *.wiki     setfiletype moin
  "au! BufNewFile,BufRead *.wiki     setfiletype Wikipedia
  au! BufRead,BufNewFile *.rs       setfiletype rust
augroup END

" C Language
augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

autocmd FileType html  set tabstop=2|set shiftwidth=2
autocmd FileType xhtml set tabstop=2|set shiftwidth=2
autocmd FileType xml   set tabstop=2|set shiftwidth=2
