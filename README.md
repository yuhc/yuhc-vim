DD Vim Configuration
====================

This is the personal Vim configuration of Hangchen YU. It's based on
Danilo Dellaquila's [configuration](https://raw.githubusercontent.com/ddellaquila/dd-vim/master/README.md) for beginners. Thanks to him.

Managing Vim plugins has been always difficult, all files are
stored into common directories, which means that updating or
disabling plugins can be a real mess, so I decided to rewrite
my Vim configuration from scratch and make use of
[Vundle](https://github.com/gmarik/Vundle.vim), a plugin management
system that make a well organized Vim directory. Also Vundle
ensures that the latest versions of your plugins are installed
and makes it easy to keep them up to date.

Customizing Vim configuration is really a personal thing, there are
so many settings that it's quite impossible that `yuhc-vim` or any other
`.vimrc` you can find out there fits all your needs, but it can be
a good starting point to make your own Vim configuration, so fork me
on GitHub and send me your pull requests, if they fit my needs as well
I'll be happy to merge them.


Features
--------

I divided the main `vimrc` configuration file in the following
sections to group similar settings together, they are self
explanatory so just have a look to the file.

* General Settings
* Formatting
* Programming Settings
* Vim UI
* GVim GUI
* External Configurations

GVim use the usual `gvimrc` file, but there are also few basic
setting in the "GVim GUI" section of `virmrc` that can be useful
in case `.gvimrc` is not used or is missing.

Inside the "External Configuration" section, there are calls to
separated vim files for specific needs.

* `plugins.vim`, load Vim plugins using Vundle
* `mappings.vim`, define key mappings
* `filetypes.vim`, settings for specific file types
* `abbreviations.vim`, define abbreviations
* `custom.vim`, define custom settings

Requirement
-----------

* For Ubuntu users
```
sudo apt-get install cmake autotools-dev automake
sudo apt-get install python-dev python3-dev libpcre3-dev liblzma-dev libclang-dev
sudo apt-get install cscope
```

Most of them are installed for the plugin "YouCompleteMe".

Colors
------

Color scheme is set to default with light background for GVim GUI, while
for terminals the background is set to dark.

If your terminal has a light background, use the following command to
get a better color map for syntax highlighting:

    :set background=light

I was never happy with Vim colors, and probably I'll never be, so
few years ago I wrote a couple of colorscheme files, one for a light and
another one for a dark background, you can find them inside the
directory `colors`.

Key Mappings
------------

* NERDTree: `<F9>`
    Help: `:help NERDTree`
* VimShell: `:VimShell`

Plugins
-------

I used to have much more plugins but it became a nightmare managing them
all, so now that I started from scratch again I decided to put the ones
that I really use everyday and adding new plugins with Vundle when
I need them.

`yuhc-vim` currently contains the following Vim plugins.

### YouCompleteMe

If you encounter **Using external libclang: TEMP-NOTFOUND** error, please follow [Issue 28](https://github.com/Valloric/YouCompleteMe/issues/28) to solve it.

In some systems, `libclang.so` lays in (e.g.) `/usr/lib/llvm-3.4/lib`.
The most convenient way is to add this path into `~/.bashrc`, and
`source ~/.bashrc`. Then reinstall this plugin.

### NERDTree

The NERD tree allows you to explore your filesystem and to open files
and directories. It presents the filesystem to you in the form of a
tree which you manipulate with the keyboard and/or mouse. It also
allows you to perform simple filesystem operations.

To launch NERDTree use `<F9>`. You can learn more about it with:

    :help NERDTree.


**Repository:** [https://github.com/scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)

### vim-gnupg

This script implements transparent editing of gpg encrypted files.
The filename must have a ".gpg", ".pgp" or ".asc" suffix. When opening
such a file the content is decrypted, when opening a new file the
script will ask for the recipients of the encrypted file. The file
content will be encrypted to all recipients before it is written.
The script turns off viminfo and swapfile to increase security.

**Repository:** [https://github.com/jamessan/vim-gnupg](https://github.com/jamessan/vim-gnupg)

### MatchTag

This plugin highlights the matching HTML tag when the cursor is positioned
on a tag. It works in much the same way as the MatchParen plugin.

**Repository:** [https://github.com/gregsexton/MatchTag](https://github.com/gregsexton/MatchTag)

### moin.vim

This provides syntax highlighting for MoinMoin wiki text.

**Repository:** [http://www.vim.org/scripts/script.php?script_id=1459](http://www.vim.org/scripts/script.php?script_id=1459)

### wikipedia.vim

This provides syntax highlighting for MediaWiki articles.

**Repository:** [http://www.vim.org/scripts/script.php?script_id=1787](http://www.vim.org/scripts/script.php?script_id=1787)

### SnipMate

SnipMate provides support for textual snippets, similar to TextMate.
A snippet is a piece of often-typed text that you can insert into your document using a
trigger word followed by a <tab>.

**Repository:** [https://github.com/garbas/vim-snipmate](https://github.com/garbas/vim-snipmatehttp://address)

### vim-snippets

This plugin contains snippets files for various programming languages,
including Python, Perl, PHP, Javascript, HTML, Markdown, and several
others

**Repository:** [https://github.com/honza/vim-snippets](https://github.com/honza/vim-snippets)

### markdown-preview

Yet another vim markdown preview plugin. When you want to preview it in html you just use `:MarkdownPreview defult` to show your doc in your browser. If you want to change your style, you just use `:MarkdownPreview GitHub` in github style markdown view

**Repository:** [https://github.com/vim-scripts/markdown-preview.vim](https://github.com/vim-scripts/markdown-preview.vim)

### vim-orgmode

Text outlining and task management for Vim based on Emacs' Org-Mode.

**Repository:** [https://github.com/vim-scripts/vim-orgmode](https://github.com/vim-scripts/vim-orgmode)

### VimShell

*VimShell* is an extreme shell that doesn't depend on external shells.

Adding New Plugins
------------------

To add a new Vim plugin, you need to edit the `plugins.vim` file, just
add a line with a `Plugin` command like this:

    " 'git_repo_uri' should be a valid uri to git repository
    Plugin 'git_repo_uri'

or

    " 'script-name' should be an official vim-scripts name
    Plugin 'script_name'

Here some examples taken from [Vundle](https://github.com/gmarik/Vundle.vim)
documentation.

    " The following are examples of different formats supported.
    "
    " plugin on GitHub repo
    Plugin 'tpope/vim-fugitive'
    "
    " plugin from http://vim-scripts.org/vim/scripts.html
    Plugin 'L9'
    "
    " Git plugin not hosted on GitHub
    Plugin 'git://git.wincent.com/command-t.git'
    "
    " git repos on your local machine (i.e. when working on your own plugin)
    Plugin 'file:///home/gmarik/path/to/plugin'
    "
    " The sparkup vim script is in a subdirectory of this repo called vim.
    " Pass the path to set the runtimepath properly.
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    "
    " Avoid a name conflict with L9
    Plugin 'user/L9', {'name': 'newL9'}

## Install Plugins

   Launch `vim` and run `:PluginInstall`

   To install from command line: `vim +PluginInstall +qall`


Installation
------------

Enter `yuhc-vim` directory and execute `install.sh` script:

    $ cd yuhc-vim
    $ ./install.sh


Credits
-------

* [gmarik](https://github.com/gmarik) for his Vundle documentation
  that I used in "Adding New Plugins" section
* `spiderwebdark.vim` is based on [`dante.vim`](http://www.vim.org/scripts/script.php?script_id=611)
  colorscheme by Caciano Machado
* `spiderweblight.vim` is based on [`silent.vim`](http://www.vim.org/scripts/script.php?script_id=2266)
  colorscheme by Pascal Vasilii
