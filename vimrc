syntax on

set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/vimproc'

NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tpope/vim-pathogen'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'osyo-manga/unite-shimapan'
NeoBundle 'surround.vim'
NeoBundle 'msanders/snipmate.vim'
NeoBundle 'errormarker.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'ZenCoding.vim'
NeoBundle 'skwp/vim-rspec'


filetype plugin indent on

if neobundle#exists_not_installed_bundles()
  enchomsg 'Not installed bundles : '.
    \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
endif

let g:neocomplcache_enable_at_startup = 1

set tabstop=2
set expandtab
set smarttab
set shiftwidth=2
set shiftround
set nowrap
set number
set title
set showcmd
set autoindent
set smartindent

set ignorecase
set smartcase
set wrapscan
set hlsearch


:no <C-E> :Explor
:no <C-u> :Unite
