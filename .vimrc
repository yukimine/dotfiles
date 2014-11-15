filetype off
filetype plugin indent off

syntax on

set number
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<
set nowrap
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set mouse=a
set noswapfile

inoremap jk  <Esc>

" =====
" NeoBundle
" =====
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#begin(expand('~/.vim/bundle/'))
    NeoBundleFetch 'Shougo/neobundle.vim'
    call neobundle#end()
endif

NeoBundleFetch 'Shougo/neobundle.vim'

" =====
" NeoBundle User Settings
" =====
NeoBundle 'Shougo/unite.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'scrooloose/nerdtree'

" =====
" colorscheme
" =====
let g:htbrid_use_iTerm_colors = 1
colorscheme hybrid

filetype plugin indent on

" =====
" NERDTree
" =====
" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1

" デフォルトでツリーを表示させる
" autocmd VimEnter * execute 'NERDTree'

