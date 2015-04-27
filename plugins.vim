"##############################################################"
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker :
"
" Vim Configuration
"
" Hangchen YU
"
" This is the personal Vim configuration of Hangchen YU.
"
" File: plugins.vim
"
"##############################################################"

" Plugins {

    " NERDTree
    Plugin 'scrooloose/nerdtree'
    let NERDTreeCaseSensitiveSort = 1
    map <F9> :NERDTreeToggle <CR>

    " GPG Encryption
    Plugin 'jamessan/vim-gnupg'

    " HTML Editing
    Plugin 'gregsexton/MatchTag'

    " MoinMoin Wiki Syntax
    Plugin 'moin.vim'

    " Syntax highlighting for MediaWiki articles
    Plugin 'wikipedia.vim'

    " snipMate
    Plugin 'MarcWeber/vim-addon-mw-utils'
    Plugin 'tomtom/tlib_vim'
    Plugin 'garbas/vim-snipmate'
    Plugin 'honza/vim-snippets'

    " Coding
    Plugin 'junegunn/vim-easy-align'

    " C/C++
    Plugin 'Valloric/YouCompleteMe'


" }

" End of plugins.vim
