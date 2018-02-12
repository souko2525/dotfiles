set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

set smartindent	"賢いインデントに
syntax on       "構文カラー表示on
set number      "行番号表示on
set incsearch   "インクリメンタルサーチ(入力ごとに検索するやつ)on
set ignorecase  "大文字小文字に関係なく検索
set showmatch   "括弧入力時に対応する括弧を強調
set showmode    "モードの表示
set backspace=2 "改行、インデントをバックスペースで削除可能に
set title       "編集中のファイル名を表示
set ruler       "ルーラー(右下に出る行数を表示するの)を表示
set tabstop=4   "タブ数
set shiftwidth=4 "autoindentの改行時のタブ数
set noexpandtab "タブをスペースに置き換えない
set noswapfile  "スワップファイルを作らない
set nobackup    "バックアップファイルを作らない
set hlsearch    "検索結果をハイライト
set wrapscan    "検索結果の末尾まで来たら先頭から探し直す
set wildmenu wildmode=list:full   "補完機能を強化
set wrap        "長い行は折り返す
set undolevels=100 "undoできる数
set autochdir   "ファイルを開いたフォルダへカレントを移動
set cursorline "横ラインを引く

"ハイフンを境界文字から外す
set iskeyword+=-
"
""ハイライトをEsc2回で消去
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/yushiray/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/yushiray/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'fatih/vim-go'

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
"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
autocmd FileType go :highlight goErr cterm=bold ctermfg=214
autocmd FileType go :match goErr /\<err\>/

