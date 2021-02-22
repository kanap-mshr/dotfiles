
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

  " ## 選択範囲指定を効率化
  call dein#add('terryma/vim-expand-region')

  " ## eitorconfigを使用可能にする
  call dein#add('editorconfig/editorconfig-vim')

  " ## コメントアウト
  " - gcc	現在の行のコメント・コメント解除を切り替え
  " - g>c	現在の行をコメント
  " - g<c	現在の行をアンコメント
  " - visoalモードで gc	選択範囲のコメント・コメント解除を切り替え
  call dein#add('tomtom/tcomment_vim')

  " TODO: スペルチェックのセッティング
  " http://www.yukihisa08.com/archives/12680263.html

  " ## 英語のスペルミスチェック
  " - TODO: 辞書の追加
  call dein#add('ujihisa/neco-look')

  " ## Codic
  call dein#add('rhysd/unite-codic.vim')
  call dein#add('koron/codic-vim')

  " ## グーグル翻訳を起動
  " - 範囲選択をした状態で:Gtransコマンド
  " - TODO: 以下を参考に要設定
  "   https://github.com/haya14busa/gtrans
  call dein#add('haya14busa/vim-open-googletranslate')
  call dein#add('haya14busa/vim-gtrans')
  " TODO: 以下も比較してどっちを使うか決める
  " call dein#add('skanehira/translate.vim') " グーグル翻訳

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

  " ## 別ウィンドウでそのディレクトリを階層表示する
  " - nerdtree本体
  call dein#add('scrooloose/nerdtree')
  " - 別ウィンドウでもタブの状態を共有する
  call dein#add('jistr/vim-nerdtree-tabs')

  " ## 自動で閉じカッコ
  call dein#add('Townk/vim-autoclose')

  " ## ウィンドウサイズ変更
  " - Ctrl + eでリサイズを開始
  " - h/j/k/l or 方向キーでウィンドウサイズを調整
  " - Enterで確定
  call dein#add('simeji/winresizer')

  " ## 自動補完
  " - 参考URL: https://qiita.com/hide/items/229ff9460e75426a2d07
  call dein#add('Shougo/neocomplcache.vim')

  " ## vimからサクッと実行
  " - ノーマルモードで \r か :QuickRun で実行
  " - 引数を渡したいときは :QuickRun -args \"foo bar baz\" のように書く
  " TODO: 使いながらよしなにカスタマイズする
  "       https://osyo-manga.hatenadiary.org/entry/20120919/1348054752
  call dein#add('thinca/vim-quickrun')

  " ## コードの列を簡単に揃える
  " - 使用方法
  "   - 整形したい範囲をvisualモードで囲む
  "   - Enterを押す
  "   - 区切りたい文字を選ぶ(spaceとか)
  call dein#add('junegunn/vim-easy-align')

  " ## Minimap
  call dein#add('severin-lemaignan/vim-minimap')

  " ## 非同期でシンタックスチェック
  " TODO: 既存シンタックスとの比較と検討
  " call dein#add('w0rp/ale')

  " ## 検索時にマッチした個数とそれが何番目であるかの情報を表示
  call dein#add('osyo-manga/vim-anzu')


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
  " - ejsのシンタックス
  call dein#add('nikvdp/ejs-syntax')
  " - gfでrequire()のモジュールにジャンプ
  call dein#add('moll/vim-node')
  " - vueの補完
  call dein#add('Quramy/tsuquyomi-vue')
  " - vueのシンタックス
  call dein#add('posva/vim-vue')


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


  " ----- go -----

  " ## go 関連
  " https://christina04.hatenablog.com/entry/migrate-from-vim-go-to-vim-lsp
  call dein#add('prabirshrestha/async.vim')
  call dein#add('prabirshrestha/asyncomplete.vim')
  call dein#add('prabirshrestha/asyncomplete-lsp.vim')
  " - go 以外も色々サポートしてそうな補完など
  call dein#add('prabirshrestha/vim-lsp')
  " - lspの設定をよろしくしてくれる
  call dein#add('mattn/vim-lsp-settings')
  " - :wで保存した時に、コード整形、goimport
  call dein#add('mattn/vim-goimports')



  " ----- C# -----

  " ## unity用
  call dein#add('OmniSharp/omnisharp-vim', {
        \   'autoload': { 'filetypes': [ 'cs', 'csi', 'csx' ] },
        \   'build': {
        \     'windows' : 'msbuild server/OmniSharp.sln',
        \     'mac': 'xbuild server/OmniSharp.sln',
        \     'unix': 'xbuild server/OmniSharp.sln',
        \   },
        \ })

  " ## C#のシンタックス
  call dein#add('OrangeT/vim-csharp', {
        \ 'autoload': { 'filetypes': [ 'cs', 'csi', 'csx' ] }
        \ })



  " ----- マークダウン関連 -----

  " ## シンタックスハイライトと折りたたみ
  call dein#add('plasticboy/vim-markdown')

  " ## 保存したMarkdownをブラウザでプレビュー可能にする
  call dein#add('tyru/open-browser.vim')

  " ## カーソル下のurlや文字列を開いたり検索したりする
  call dein#add('iamcco/markdown-preview.vim')

  " ## マークダウンのプレビュー (previm)
  call dein#add('kannokanno/previm')

  " ## マークダウンのプレビュー (markdown-preview.nvim)
  " - 事前に`brew install yarn`をしておく必要がある
  call dein#add('iamcco/markdown-preview.nvim')

  " ## テーブルセル内表記の動的調整にて罫線をあわせる
  " - :TableModeToggle で起動
  call dein#add('dhruvasagar/vim-table-mode')


  " ----- plantuml関連 -----

  " ## UMLテキストの編集時にシンタックスハイライト
  " 以下、インストールしておく
  " brew install graphviz
  " brew install plantuml
  call dein#add('aklt/plantuml-syntax')


  " ----- swagger 関連 -----
  " TODO: あとで設定する
  " call dein#add('xavierchow/vim-swagger-preview')


  " ----- 要検討プラグイン -----
  " TODO: あとで検討する。
  "       特に困ってないがこれ使うと補完が爆速になるかもしれない
  " call dein#add('roxma/nvim-yarp')
  " call dein#add('roxma/vim-hug-neovim-rpc')
  " call dein#add('Shougo/deoplete.nvim')


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

" ----- posva/vim-vue -----
" - vueファイルなど途中からハイライトが効かなくなることの対応として
"   ファイルの先頭からパースしてハイライトを行う設定
autocmd FileType vue syntax sync fromstart

" - vueファイルのように
"   HTML, JS, CSSの記述が混在するときに
"   コメントアウトがうまくできなくなるのでその対応
let g:ft = ''
function! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
      endif
    endif
  endif
endfunction
function! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    let g:ft = ''
  endif
endfunction

" ----- scrooloose/syntastic.git -----
" ファイルを開いたときや保存した時に自動で解析が走らないようにする
" 手動で解析を実行するには、:SyntasticCheck　コマンド
" 上記コマンドは、キーバインド設定にて別途設定する

" - エラーメッセージの書式
set statusline+=%#warningmsg#

set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" - location list を常に更新
let g:syntastic_always_populate_loc_list = 1

" - エラーがあったら自動でロケーションリストを開く
let g:syntastic_auto_loc_list = 1

" - ファイルを開いたときはチェックしない
let g:syntastic_check_on_open = 0

" - wqではチェックしない
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = {
      \ 'mode': 'passive',
      \ 'active_filetypes': ['ruby', 'javascript'],
      \ 'passive_filetypes': []
      \ }

" - 構文チェックを行うモジュール
let g:syntastic_ruby_checkers=['rubocop']
let g:syntastic_javascript_checkers = ['eslint']

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

" ----- plasticboy/vim-markdown -----
" - markdownなファイルを開いたときにデフォルトで折りたたみになってしまうをOFF
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0

" ----- kannokanno/previm -----
" - このままだと.mkdのファイルに対してのハイライトらしいため
"   .mdもfiletype=markdownとなるように設定
autocmd BufRead,BufNewFile *.md set filetype=markdown
let g:previm_open_cmd = 'open -a Google\ Chrome'

" ----- scrooloose/nerdtree -----
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('py',     'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('md',     'blue',    'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml',    'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('config', 'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('conf',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('json',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('html',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('styl',   'cyan',    'none', 'cyan',    '#151515')
call NERDTreeHighlightFile('css',    'cyan',    'none', 'cyan',    '#151515')
call NERDTreeHighlightFile('rb',     'Red',     'none', 'red',     '#151515')
call NERDTreeHighlightFile('js',     'Red',     'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php',    'Magenta', 'none', '#ff00ff', '#151515')
" - 隠しファイルをデフォルトで表示
let NERDTreeShowHidden = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable  = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'

" ----- prabirshrestha/vim-lsp -----
" - ファイルの変更に伴いリアルタイムにエラー表示する機能 Diagnostics を1:有効
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
" - 自動で入力補完ポップアップを表示する設定
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0
" - ポップアップを表示するまでのディレイ
let g:asyncomplete_popup_delay = 200
" - LSP の仕様である textEdit を有効
"   (少し実験的な実装になっている為、もし誤動作する様であれば 0 に設定するのが良い)
let g:lsp_text_edit_enabled = 0

" ----- Townk/vim-autoclose -----
" - 閉じカッコを自動で閉める際のスペース数
let g:AutoCloseExpandSpace=0

" ----- simeji/winresizer -----
" - デフォルトだと垂直方向は10行単位、
"   水平方向は3文字単位で移動されるため
"   下記設定で1ずつ動くように変更
let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1

" ----- Shougo/neocomplcache -----
" Note: https://www.karakaram.com/neocomplcache/ が参考になりそう
" TODO: このあたりの設定をもう少し整理する
autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist'
        \ }

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Don't Use smartcase.
let g:neocomplete#enable_smart_case = 0
let g:neocomplete#enable_auto_close_preview = 0
let g:neocomplete#enable_auto_select = 0
let g:neocomplete#disable_auto_complete = 0

" Enable heavy omni completion.
" TODO: 以下、未知の関数扱いになってしまう件を要調査
" call neocomplete#custom#source('_', 'sorters', [])
if !exists('g:neocomplete#sources')
        let g:neocomplete#sources = {}
endif
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.cs = '.*[^=\);]'
let g:neocomplete#sources.cs = ['omni']
let g:neocomplete#enable_refresh_always = 0
let g:echodoc_enable_at_startup = 1
" let g:neocomplete#enable_insert_char_pre = 1
" let g:echodoc_enable_at_startup = 0
let g:neocomplete#enable_insert_char_pre = 0
" "シンタックス補完を無効に
" let g:neocomplcache_plugin_disable = {
" 	\ 'syntax_complete' : 1,
" 	\ }


" ----- posva/vim-vue -----
" - vueなどの
"   複数の言語が混ざってるファイルだと
"   vim の効率よくシンタックスハイライトかけようとする機能が
"   うまくいかないことがあるので、その対応
autocmd FileType vue syntax sync fromstart


" ----- aklt/plantuml-syntax -----
au FileType plantuml command! OpenUml : '!start chrome %'
" au FileType plantuml command! OpenUml : 'open -a Google\ Chrome %'

" plantumlスクリプトの設定
let g:plantuml_executable_script="~/bin/scripts/create-plantuml.sh"


" ----- 要整理 -----
" TODO: のちほど適宜ちゃんと場所を考慮して設定する
"       (とりあえず、整理せずにそのまま昔のmacからの移植)

" つくよみの定義ジャンブを別タブで開く
" let g:tsuquyomi_definition_split = 1

" テーブル整形
let g:table_mode_corner = '|'




" -------------------------------------------------
" pluginのキーバインド設定
" -------------------------------------------------

" ----- jlanzarotta/bufexplorer -----
" - bufExplorerを起動
nmap <silent> ,l :BufExplorer<CR>


" ----- aklt/plantuml-syntax -----
nmap <silent> ou :OpenUml<CR>
" :command OU OpenUml


" ----- Quramy/tsuquyomi -----
" - 型定義などのツールチップを表示する
" - <Leader>tで表示します。
set ballooneval
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

" ----- scrooloose/syntastic.git -----
nnoremap <C-C> :w<CR>:SyntasticCheck<CR>

" ----- kannokanno/previm -----
" ctrl pでプレビュー
nnoremap <silent> <C-p> :PrevimOpen<CR>

" ----- scrooloose/nerdtree -----
" - ctrl+nで起動
map <C-n> :NERDTreeToggle<CR>


" ----- Shougo/neocomplcache -----
" TODO: 以下、READMEの設定そのままのため使いながら要調整
" Note: https://github.com/OmniSharp/omnisharp-vim/wiki/Example-NeoComplete-Settings

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " return neocomplete#close_popup() . "\<CR>"
  " return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplcache#close_popup()
inoremap <expr><C-e> neocomplcache#cancel_popup()



" ----- severin-lemaignan/vim-minimap -----
" let g:minimap_show='<leader>ms'
" let g:minimap_update='<leader>mu'
" let g:minimap_close='<leader>gc'
" let g:minimap_toggle='<leader>gt'
let g:minimap_toggle='<leader>mm'


" ----- osyo-manga/vim-anzu -----
" mapping
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
" clear status
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)
" statusline
set statusline=%{anzu#search_status()}

" ----- terryma/vim-expand-region -----
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" ----- prabirshrestha/vim-lsp -----
nmap <silent> gd :LspDefinition<CR>
nmap <silent> <f2> :LspRename<CR>
nmap <silent> <Leader>d :LspTypeDefinition<CR>
nmap <silent> <Leader>r :LspReferences<CR>
nmap <silent> <Leader>i :LspImplementation<CR>




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

" ## コマンドラインでTabによるファイル名補完を有効化
set wildmode=longest:full,full

" ## Beep音を消す
set vb t_vb=

" ## viminfo ファイルを作成しない
set viminfo=

" ## swap ファイルを作成しない
set noswapfile

" ## バックアップファイルを作成しない
set nobackup

" ## un~ ファイル(undoの情報)を作成しない
set noundofile

