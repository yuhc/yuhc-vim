"##############################################################"
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker :
"
" Vim Configuration
"
" Hangchen YU
"
" This is the personal Vim configuration of Hangchen YU.
"
" File: mappings.vim
"
"##############################################################"

" Key Reference Table {

    "<BS>           Backspace
    "<Tab>          Tab
    "<CR>           Enter
    "<Enter>        Enter
    "<Return>       Enter
    "<Esc>          Escape
    "<Space>        Space
    "<Up>           Up arrow
    "<Down>         Down arrow
    "<Left>         Left arrow
    "<Right>        Right arrow
    "<F1> - <F12>   Function keys 1 to 12
    "#1, #2..#9,#0  Function keys F1 to F9, F10
    "<Insert>       Insert
    "<Del>          Delete
    "<Home>         Home
    "<End>          End
    "<PageUp>       page-up
    "<PageDown>     page-down

" }

" Key Mappings {

    let $MAPDIR=$HOME."/.yuhc-vim/bundle/mappings"

    "Map Leader key
    let mapleader = ","

    " Copy and paste
    map <Leader><C-c> "+y
    map <Leader><C-v> "+gP

    " Select all and copy
    map <Leader>a ggVG"+y

    " Toogle Mouse
    map <Leader>m :set mouse=a<CR>
    map <Leader>M :set mouse=<CR>

    " Insert the current date
    map <Leader>d :read !date --rfc-3339=date<CR>kJ$
    map <Leader>D :read !date -R<CR>kJ

    " Add a reStructuredText link
    map <Leader>l o``_<CR>.. _``: link<ESC>k2b

    " Python Debugging
    map <Leader>p Oimport pdb; pdb.set_trace()
    map <Leader>P Oprint("variable=%s" % variable)<Esc>

    """ Reformat text
    "map <Leader>f gq}
    "map <Leader>F gqG

    " Reformat codes
    """ Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
    vmap <Enter> <Plug>(EasyAlign)
    """ Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)

    " Tabs control
    """ <C-t> create a new tab
    nnoremap <C-t>                :tabnew<Space>
    inoremap <C-t> <Esc>          :tabnew<Space>
    """ <C-Tab> next tab
    noremap  <C-Tab>              :<C-U>tabnext<CR>
    inoremap <C-Tab> <C-\><C-N>   :tabnext<CR>
    cnoremap <C-Tab> <C-C>        :tabnext<CR>
    """ <C-SHIFT-Tab> previous tab
    noremap  <C-S-Tab>            :<C-U>tabprevious<CR>
    inoremap <C-S-Tab> <C-\><C-N> :tabprevious<CR>
    cnoremap <C-S-Tab> <C-C>      :tabprevious<CR>
    """ vim key-mappings
    nnoremap th  :tabfirst<CR>
    nnoremap tj  :tabnext<CR>
    nnoremap tk  :tabprev<CR>
    nnoremap tl  :tablast<CR>
    nnoremap tt  :tabedit<Space>
    nnoremap tn  :tabnew<CR>
    nnoremap tm  :tabm<Space>
    nnoremap td  :tabclose<CR>

    """ Navigate between split panes
    nnoremap gh <C-W><C-H>
    nnoremap gj <C-W><C-J>
    nnoremap gk <C-W><C-K>
    nnoremap gl <C-W><C-L>
    nnoremap g\ <C-W><C-V>
    nnoremap g- <C-W><C-S>

    " Toggle paste mode
    nnoremap <F3> :set invpaste paste?<CR>
    set pastetoggle=<F3>
    set showmode

    " Auto format codes
    noremap <F4> :Autoformat<CR>
    """ formatt upon saving
    """ au BufWrite * :Autoformat

    " CScope
    source $MAPDIR/cscope_maps.vim
    nmap <F8> :TagbarToggle<CR>

" }

" End of mappings.vim
