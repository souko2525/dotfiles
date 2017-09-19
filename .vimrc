set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

set smartindent	"$B8-$$%$%s%G%s%H$K(B
syntax on       "$B9=J8%+%i!<I=<((Bon
set number      "$B9THV9fI=<((Bon
set incsearch   "$B%$%s%/%j%a%s%?%k%5!<%A(B($BF~NO$4$H$K8!:w$9$k$d$D(B)on
set ignorecase  "$BBgJ8;z>.J8;z$K4X78$J$/8!:w(B
set showmatch   "$B3g8LF~NO;~$KBP1~$9$k3g8L$r6/D4(B
set showmode    "$B%b!<%I$NI=<((B
set backspace=2 "$B2~9T!"%$%s%G%s%H$r%P%C%/%9%Z!<%9$G:o=|2DG=$K(B
set title       "$BJT=8Cf$N%U%!%$%kL>$rI=<((B
set ruler       "$B%k!<%i!<(B($B1&2<$K=P$k9T?t$rI=<($9$k$N(B)$B$rI=<((B
set tabstop=4   "$B%?%V?t(B
set shiftwidth=4 "autoindent$B$N2~9T;~$N%?%V?t(B
set noexpandtab "$B%?%V$r%9%Z!<%9$KCV$-49$($J$$(B
set noswapfile  "$B%9%o%C%W%U%!%$%k$r:n$i$J$$(B
set nobackup    "$B%P%C%/%"%C%W%U%!%$%k$r:n$i$J$$(B
set hlsearch    "$B8!:w7k2L$r%O%$%i%$%H(B
set wrapscan    "$B8!:w7k2L$NKvHx$^$GMh$?$i@hF,$+$iC5$7D>$9(B
set wildmenu wildmode=list:full   "$BJd405!G=$r6/2=(B
set wrap        "$BD9$$9T$O@^$jJV$9(B
set undolevels=100 "undo$B$G$-$k?t(B
set autochdir   "$B%U%!%$%k$r3+$$$?%U%)%k%@$X%+%l%s%H$r0\F0(B
set cursorline "$B2#%i%$%s$r0z$/(B

"$B%O%$%U%s$r6-3&J8;z$+$i30$9(B
set iskeyword+=-
"
""$B%O%$%i%$%H$r(BEsc2$B2s$G>C5n(B
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
