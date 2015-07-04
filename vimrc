syntax on

set noundofile
set backupdir=/tmp
set nocompatible
filetype plugin indent off

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/Users/kytiken/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/kytiken/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" input support
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tomtom/tcomment_vim'

" syntax check
NeoBundle 'scrooloose/syntastic'
NeoBundle 'errormarker.vim'

NeoBundle 'thinca/vim-quickrun'

" NERDTree setting
NeoBundle 'scrooloose/nerdtree'
autocmd vimenter * NERDTree

NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-rails'
NeoBundle 'slim-template/vim-slim.git'
NeoBundle 'kchmck/vim-coffee-script'

" powerline setting
NeoBundle 'alpaca-tc/alpaca_powertabline'
NeoBundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
set noshowmode
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
" Required:
call neobundle#end()
" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

nmap s <Plug>(operator-replace)
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

set list

let mapleader = "\<Space>"

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
