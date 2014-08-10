syntax on

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
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

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

NeoBundle 'Shougo/unite.vim'
NeoBundle 'tpope/vim-pathogen'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'osyo-manga/unite-shimapan'
NeoBundle 'surround.vim'
NeoBundle 'msanders/snipmate.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'errormarker.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'ZenCoding.vim'
NeoBundle 'skwp/vim-rspec'

NeoBundle 'kana/vim-textobj-user'
NeoBundle 'sgur/vim-textobj-parameter'
NeoBundle 'osyo-manga/vim-textobj-multiblock'
NeoBundle 'osyo-manga/vim-textobj-multitextobj'

NeoBundle 'kana/vim-operator-user'
NeoBundle 'kana/vim-operator-replace'
NeoBundle 'scrooloose/nerdtree'
autocmd vimenter * NERDTree

NeoBundle 'tpope/vim-fugitive'

NeoBundle 'chase/vim-ansible-yaml'
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

:no <C-E> :Explor
:no <C-u> :Unite
