
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

  " -----------------
  " plugins
  " -----------------

  " ----- 全般 -----

  " ## インデントを可視化
  call dein#add('nathanaelkane/vim-indent-guides')

  " ## コメントアウト入力
  " - \cc コメントアウトする。
  " - \ci 選択範囲のそれぞれの行のコメントの状態を切り替える。
  " - \cA 行末にコメント追加。
  " - \cs ブロックコメントを挿入する。ブロックコメントが存在しない言語の場合は各行に単一行コメントを挿入する。
  call dein#add('scrooloose/nerdcommenter')

  " ## スニペット機能
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " ## `;`の付け忘れ防止
  " - `<Leader>;` で末尾に`;`を付ける
  call dein#add('vim-scripts/teol.vim.git')

  " ## 末尾の無駄なスペースが赤色でハイライト
  call dein#add('bronson/vim-trailing-whitespace')

  " ## bufexplorer
  call dein#add('jlanzarotta/bufexplorer')

  " ## ログファイルを色づけする
  " - `:AnsiEsc`をコマンドで反映
  call dein#add('vim-scripts/AnsiEsc.vim')

  " ## vimでカーソル位置にあるクラスやメソッドの定義ジャンプ
  " - `brew install ctags`を事前にやっておく
  " - <C-]> 定義に飛ぶ
  " - <C-o> 飛ぶ前のバッファに戻る
  " - <C-i> <C-o>の逆
  call dein#add('szw/vim-tags')

  " ## ステータスバーをカスタマイズ
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  " ## Gitをvimから便利に使う
  " - :Gstatus で起動
  " - Gstatusウィンドウを閉じる。
  "   - Gstatusウィンドウ上で q
  " - Gstatusウィンドウの再描画。
  "   - Gstatusウィンドウ上で r
  " - Gstatusのヘルプを見る。
  "   - Gstatusウィンドウ上で g? または、:help Gstatus
  " - Gstatusウィンドウ内にリストされているファイルを編集または確認する。
  "   - ファイル名のある行の上にカーソルを持っていきエンター
  " - GstatusウィンドウでリストされているファイルのStaging状態を変更。
  "   - ファイル名のある行の上にカーソルを持っていき – （ハイフン）　でStaging状態のON／OFFが変わります。 （git add／git reset）
  " - Gstatusウィンドウでリストされているファイルと最新コミットとの差を確認。
  "   - ファイル名のある行の上にカーソルを持っていき D （大文字）を入力。 または、dv （:Gvdiff と同じ）、ds（:Gsdiff と同じ）。
  " - Gstatusウィンドウでリストされているファイルを下部ウィンドウにスプリットして表示する。
  "   - 水平分割：ファイル名のある行の上にカーソルを持っていき o （小文字）（:Gsplit と同じ）を入力。
  "   - 縦分割：ファイル名のある行の上にカーソルを持っていき S （大文字）（:Gvsplitと同じ）を入力。
  " - 変更されているファイルを最新コミットに戻す。
  "   - ファイル名のある行の上にカーソルを持っていき U（大文字）を入力。
  " - Staging状態にあるファイルをコミットする。
  "   - ファイル名のある行の上にカーソルを持っていき cc （小文字）を入力。
  call dein#add('tpope/vim-fugitive')

  " ## シンタックスチェック (IDEっぽくする)
  call dein#add('scrooloose/syntastic.git')


  " ----- ruby -----

  " ##  rubyの`if - end`をカッコのように`%`でジャンプする
  call dein#add('vim-scripts/ruby-matchit')

  " ##  rubyのendを自動補完
  call dein#add('tpope/vim-endwise')


  " ----- javascript -----

  " ## シンタックスチェック
  " - 定番
  call dein#add('pangloss/vim-javascript')
  " - reactなどに対応
  call dein#add('othree/yajs.vim')
  " - ECMAScript(ES)に対応
  call dein#add('othree/es.next.syntax.vim')
  " - jQueryやAngularJSなど他のライブラリにも対応
  call dein#add('othree/javascript-libraries-syntax.vim')
  " ejsのシンタックス
  call dein#add('nikvdp/ejs-syntax')



  " ----- typescript -----

  " ## typescriptのシンタックス
  call dein#add('leafgarland/typescript-vim')

  " ## 文法の補完や定義へのジャンプ,利用箇所の表示,文法チェックなど
  " - Navigations
  "   - <C-]>でカーソル下の要素の定義へジャンプ
  "   - <C-t>で戻る
  "   - :TsuTypeDefinitionでカーソル下の要素の型定義へジャンプ
  " - Reference
  "   - <C-^>でカーソル下の要素が参照されている場所を表示
  "   - Keyword search
  "   - :TsuSearch {keyword} で開いているファイル・参照されているファイルからキーワード検索
  " - Show compile errors
  "   - バッファを保存したときにチェックが行わる。もしくは:TsuGeterrです。
  "   - :TsuGeterrProjectでプロジェクト全体をチェック出来る
  "   - :TsuQuickFixで修正を行える
  " - tooltip
  "   -  <Leader>tで表示する
  " - Create es6 import declaration
  "   - :TsuImportをモジュールの上で実行すると、そのモジュールのインポート宣言がファイル上部に追加
  call dein#add('Quramy/tsuquyomi')



  " 設定終了
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
" pluginの全般的な設定
" -------------------------------------------------

" ----- nathanaelkane/vim-indent-guides ------
" - 起動時に有効化する
let g:indent_guides_enable_on_vim_startup = 1

" ----- Quramy/tsuquyomi -----
" - importモジュール宣言を挿入時になるべく短いpathで挿入する
let g:tsuquyomi_shortest_import_path = 1

" ----- scrooloose/syntastic.git -----
" - ファイルを開いたときや保存した時に自動で解析が走らないようにする
" - 手動で解析を実行するには、:SyntasticCheck　コマンド
" - 上記コマンドは、キーバインド設定にて別途設定する
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive', 'passive_filetypes': ['ruby'] }
let g:syntastic_ruby_checkers=['rubocop']

" ----- nikvdp/ejs-syntax -----
" - インクルードファイルでもシンタックスを付加する
autocmd BufNewFile,BufRead *.ejs set filetype=ejs
autocmd BufNewFile,BufRead *._ejs set filetype=ejs
function! s:DetectEjs()
    if getline(1) =~ '^#!.*\<ejs\>'
        set filetype=ejs
    endif
endfunction
autocmd BufNewFile,BufRead * call s:DetectEjs()




" -------------------------------------------------
" pluginのキーバインド設定
" -------------------------------------------------


" ----- jlanzarotta/bufexplorer -----
" - bufExplorerを起動
nmap <silent> ,l :BufExplorer<CR>


" ----- Quramy/tsuquyomi -----
" - 型定義などのツールチップを表示する
" - <Leader>tで表示します。
set ballooneval
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>


" ----- scrooloose/syntastic.git -----
nnoremap <C-C> :w<CR>:SyntasticCheck<CR>




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
" 見た目に関する設定
" -------------------------------------------------

" ## 構文ハイライトが有効
syntax on

" ## 背景色を黒
set background=dark

" ## hybridを使用する
colorscheme hybrid

" ## vimを半透明にする
highlight Normal ctermbg=none





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




