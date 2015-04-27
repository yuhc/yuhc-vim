"##############################################################"
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker :
"
" Vim Configuration
"
" Hangchen YU
"
" This is the personal Vim configuration of Hangchen YU.
"
" File: vimrc
"
"##############################################################"

" General Settings {

    " We use Vim settings
    set nocompatible        " Must be the first line

    " Load external settings
    set exrc
    set secure

    " Set Yuhc Vim Configuration path
    let $YUPATH=$HOME."/.yuhc-vim"
    " Uncomment the next 4 lines if you use GVim in Windows
    "if has('gui_running')
    "    " Set Yuhc Vim Configuration path
    "    let $YUPATH="D:\.yuhc-vim"
    "endif

    " Disable backup
    set nobackup
    set nowritebackup

    " Set some search options
    "set incsearch
    set ignorecase
    set hlsearch
    " remap space to clear highlight
    nmap <SPACE> <SPACE>:noh<CR>

    " Spell Checking
    set nospell
    set spelllang=en,es,it
    set spellsuggest=5

    " Setup Vundle Support {

        filetype off            " Required by Vundle
        "  set the runtime path to include Vundle and initialize
        set rtp+=$YUPATH/bundle/Vundle.vim
        " Uncomment this if you use GVim in Windows
        "if has('gui_running')
        "    set rtp+=D:\.yuhc-vim\bundle\Vundle.vim
        "    let path='D:\.yuhc-vim\bundle'
        "    call vundle#begin(path)
        "else
            call vundle#begin()
        "endif

        " Let Vundle manage Vundle, this is required
        Plugin 'gmarik/Vundle.vim'

    " }

" }tt

" Formatting {

    " Set maximum width of text line
    set textwidth=72
    set colorcolumn=110
    highlight ColorColumn ctermbg=darkgray

    " Tabs settings
    set expandtab
    set tabstop=4
    set shiftwidth=4

    " Automatic Indentation
    set autoindent
    set shiftwidth=4

" }

" Programming Settings {

    " Set backspace key working properly
    set backspace=indent,eol,start

    " Set folding method and leave all folds open
    set fdm=indent
    set foldlevel=99

    " Enconding text
    set encoding=utf8

    " Syntax
    syntax on

    " Include Library
    let &path.="src/include,/usr/include/AL,"
    set includeexpr=substitute(v:fname,'\\.','/','g')

    " YouCompleteMe
    let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

" }

" Vim UI {

    " Color Scheme and Background
    colorscheme default
    "set background=light
    set background=dark

    " Statusline
    set laststatus=2
    set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [ASCII=\%03.3b\ HEX=\%02.2B]\ [POS=%04l,%04v\ %p%%\ %L]

    " Line numbers
    set number

    " Set visual bell
    set vb

    " Disable mouse in a terminal
    set mouse=

" }

" GVim GUI {

    " Set useful settings for GVim in case .gvimrc is missing
    " Note that gvimrc file is always sourced after the vimrc file.
    if has('gui_running')

        " Color Scheme and Background
        colorscheme default
        set background=light
        "set background=dark

        " Enable mouse in a windows
        set mouse=a

    endif

" }

" External Configurations {

    " Load Plugins
    source $YUPATH/plugins.vim
    "
    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
    "
    " Brief help
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    "
    " see :h vundle for more details or wiki for FAQ

    " Key Mappings
    source $YUPATH/mappings.vim

    " File Types
    source $YUPATH/filetypes.vim

    " Abbreviations
    source $YUPATH/abbreviations.vim

    " Customizations
    source $YUPATH/custom.vim

" }

" Uncomment this if you use GVim in Windows
" Vundle fix to load bundles
"if has('gui_running')
"   call vundle#config#require(g:bundles)
"endif

" End of vimrc
