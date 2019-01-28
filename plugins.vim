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
    Plugin 'ggreer/the_silver_searcher'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'vim-scripts/perl-support.vim'
    Plugin 'vim-scripts/latex-support.vim'
    Plugin 'vim-scripts/matlab.vim'
    Plugin 'MikeCoder/markdown-preview.vim'
    map <leader>m :MarkdownPreview GitHub<CR>
    Plugin 'Chiel92/vim-autoformat'

    " C/C++
    " Plugin 'Valloric/YouCompleteMe'
    Plugin 'ajh17/VimCompletesMe'
    Plugin 'vim-scripts/c.vim'
    Plugin 'vim-scripts/cscope.vim'
    Plugin 'vim-scripts/autoload_cscope.vim'
    Plugin 'majutsushi/tagbar'

    " Convert
    Plugin 'vim-scripts/vim-orgmode'

    " Theme
    Plugin 'godlygeek/csapprox'

    " Environment
    Plugin 'Shougo/vimshell.vim'

" }

" End of plugins.vim
