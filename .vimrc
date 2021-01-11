
" -------------------------------------------------
" deinスクリプト
" -------------------------------------------------

if &compatible
  set nocompatible               " Be iMproved
endif
" bundleで管理するディレクトリ
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('$HOME/.cache/dein')
  call dein#begin('$HOME/.cache/dein')
  call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')

  " ----- plugins -----

  " ## スニペット機能
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " ## `;`の付け忘れ防止
  " - `<Leader>;` で末尾に`;`を付ける
  call dein#add('vim-scripts/teol.vim.git')


  " ----- 設定終了 -----
  call dein#end()
  call dein#save_state()
endif
filetype plugin indent on
syntax enable

" もし未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif




" -------------------------------------------------
" plugin以外のキーバインド設定
" -------------------------------------------------

" ## <Leader>キーをスペースに割り当てる
let mapleader = "\<Space>"

" ## `:grep`で`:vimgrep`を使用できるようにする
set grepprg=internal

" ## インサートモードのEscをjjにバインド
inoremap <silent> jj <ESC>




" -------------------------------------------------
" pluginのキーバインド設定
" -------------------------------------------------

" " ## bufexplorer
" " - bufExplorerを起動
" nmap <silent> ,l :BufExplorer<CR>



" -------------------------------------------------
" pluginのその他設定
" -------------------------------------------------



" -------------------------------------------------
" 文字コード系の設定
" -------------------------------------------------

" ## 各種文字コードをutf8に設定
set termencoding=utf8
set encoding=utf8
scriptencoding utf-8
set fenc=utf8

" ## 保存時の文字コード
set fileencoding=utf-8

" ## 読み込み時の文字コードの自動判別. 左側が優先される
set fileencodings=utf-8,ucs-boms,euc-jp,cp932

" ## 改行コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac

" ## □や○文字が崩れる問題を解決
set ambiwidth=double






" -------------------------------------------------
" 見た目に関する設定
" -------------------------------------------------

" ## 構文ハイライトが有効 
syntax on

" ## 背景色を黒
set background=dark

" ## vimを半透明にする
highlight Normal ctermbg=none



" -------------------------------------------------
" エディタに関する設定
" -------------------------------------------------

" ## カーソルの位置表示 
" - カーソルが60行目の7文字目でファイルの13%ぐらいの場所のとき
"   `60, 7 13%` と表示される
set ruler

" ## クリップボードの共有
set clipboard=unnamed

" ## vi互換の動作を無効
set nocompatible

" ## 挿入モードでバックスペースやCtrl-hを押しても何も反応がない場合の対処
set backspace=indent,eol,start

" ## コマンドラインの履歴を100件保存する
set history=100

" ## 大文字小文字を区別しないで検索
set ignorecase

" ## 大文字と小文字が混在した言葉で検索を行った場合に限り大文字と小文字を区別
set smartcase 

" ## 検索したときのハイライト
set hlsearch " ON
" set nohls " OFF

" ## タイトルの表示
set title

" ## 入力中のコマンドを表示
set showcmd

" ## ステータスラインを常に表示
" - 0: 表示しない
" - 1: 2つ以上ウィンドウがある時だけ表示
set laststatus=2

" ## 括弧を入力した時に対応する括弧に一瞬カーソルを飛ばす
set showmatch
set matchtime=1

" ## ターミナルの端で折り返す
set wrap

" ## Tabではなくスペースのみ使う設定
" - 入力モードでTabキー押下時やインデントの際にタブ文字ではなく半角スペースを挿入
set expandtab
" - 何個分のスペースで1つのタブとしてカウントするかの設定
set tabstop=2
" - 改行などのときのインデント発生時スペース何個分インデントさせるかの設定
set shiftwidth=2
" - (値を0に設定することで) softtabstopの機能をOFFにする
set softtabstop=0

" ## 行番号を表示
set nu

