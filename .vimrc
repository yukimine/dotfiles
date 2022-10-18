" =====
" おまじない
" =====
" ファイルタイプの自動検出を無効にする
filetype off
" ファイルタイプ用のプラグインとインデント設定を自動読み込みしないようにする
filetype plugin indent off

" =====
" 基本設定
" =====
" キーマップを読み込む
source ~/dotfiles/.vimrc.keymap

" シンタックスを有効にする
syntax on

" 文字コードを設定する
set encoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp
set fileformats=unix,dos,mac

" 行番号を表示する
set number
" 不可視文字を表示する
set list
" 不可視文字を設定する
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<
" オートインデントを有効にする
set autoindent
" タブ入力をスペースに置き換える
set expandtab
" タブをn文字分で展開する
set tabstop=4
" タブをn文字分で挿入／削除する
set shiftwidth=4
" タブを入力したときにスペースをn個挿入する
set softtabstop=0
" マウスを有効にする
set mouse=a
" スワップファイルを作成しない
set noswapfile
" ハイライトを有効にする
set hlsearch
" バックスペースで削除できるものを指定する
" （デリートキーが効かない問題の対策）
set backspace=indent,eol,start

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
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle "ctrlpvim/ctrlp.vim"
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

" Go
NeoBundle 'fatih/vim-go'

" =====
" colorscheme
" =====
let g:htbrid_use_iTerm_colors = 1
colorscheme hybrid

" =====
" NERDTree
" =====
" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1

" デフォルトでツリーを表示させる
" autocmd VimEnter * execute 'NERDTree'

" trでツリーを表示／非表示
nnoremap <silent>tr :NERDTreeToggle<CR>

" =====
" vim-go
" =====
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

" =====
" おまじない
" =====
" ファイルタイプの自動検出、ファイルタイプ用のプラグインとインデント設定を自動で読み込む
filetype plugin indent on

