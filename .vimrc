let g:vimrcdebug=0

let g:mac=0
let g:macvim=0
let g:cygwin=0
let g:windows=0
let g:unix=0

"---------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" vaxe plugin for HaXe development
Plugin 'jdonaldson/vaxe'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}
" SVN plugin
Plugin 'juneedahamed/svnj.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"---------------------------------------------------------------

if g:vimrcdebug | echo "Running vimrc" | endif

" See ':help has()'
if has('gui_macvim')
	if g:vimrcdebug | echo "macvim" | endif
	let g:macvim=1
elseif has('win32') || has('win64')
	if g:vimrcdebug | echo "windows" | endif
	let g:windows=1
endif

if has('macunix')
	if g:vimrcdebug | echo "mac unix" | endif
	let g:mac=1
endif

if has('win32unix')
	if g:vimrcdebug | echo "cygwin" | endif
	let g:cygwin=1
endif

if has('unix')
	if g:vimrcdebug | echo "unix" | endif
	let g:unix=1
endif

set nocompatible

set winaltkeys=no

filetype on
filetype plugin on

colorscheme nick

syntax on

if !has("gui_running")
	set t_Co=256
else
	set t_Co=512
endif

set mouse=a

if has('mouse_sgr')
    set ttymouse=sgr
endif

set autoindent
set autoread
set backspace=indent,eol,start
set browsedir=buffer
set clipboard=unnamed
if &diff
	set scrollbind
	set cursorbind
	" Set maximum possible width
	"set winwidth=1000
	" The winwidth will be corrected to the actual width of the screen, so now
	" we can divide by 2 to actually split the screen in half
	"set columns=156
	set lines=999
else
	if has('gui')
		"set columns=999
		set lines=999
	endif
endif
set complete=.,w,b,u,k,s,i,d,]
set completeopt=menu,menuone,longest
set copyindent
set preserveindent
"set diffexpr=MyDiff()
set diffopt=filler,vertical,context:10,foldcolumn:0,iwhite
set display=lastline
set gdefault
set foldmethod=expr
set nofoldenable
set nu
set guicursor=n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
if g:mac || g:macvim
	set guifont=Monaco:h10
else
	set guifont=Lucida_Console:h9
endif
set guioptions=eihmtbrlaAc
set history=2000
set ignorecase
set smartcase
set infercase
set incsearch
set selection=inclusive
set keymodel=startsel
set linespace=0
set nobackup
set noswapfile
set noremap
set foldopen=block,hor,mark,percent,quickfix,search,tag,undo
set foldminlines=40
set hlsearch
set nowrap
set ruler
set scroll=1
set sidescroll=3
set scrolloff=3
set sidescrolloff=10
set noexpandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set scrollopt=ver,hor,jump
set showcmd
set smartindent
"au BufNewFile,BufRead *.txt,*.doc,*.rtf set spell
au Bufread,BufNewFile *.as set filetype=actionscript
au Bufread,BufNewFile *.template set filetype=jinja
augroup filetype
	au! BufRead,BufNewFile *.proto setfiletype proto
augroup end
"set spellsuggest=fast
set nospell
set splitright
set splitbelow
set switchbuf=split
set textwidth=0
set undolevels=10000
set whichwrap=b,s,<,>
set winheight=999
"set winwidth=999
"set columns=999
set lines=999
set wildmenu

set wildignore+=.DS_Store
set wildignore+=*.abc
set wildignore+=*.as3proj
set wildignore+=*.bmp
set wildignore+=*.csv
set wildignore+=*.cxx
set wildignore+=*.dat
set wildignore+=*.data
set wildignore+=*.db
set wildignore+=*.diff
set wildignore+=*.exe
set wildignore+=*.fla
set wildignore+=*.flv
set wildignore+=*.gz
"set wildignore+=*.i
set wildignore+=*.iml
set wildignore+=*.jar
set wildignore+=*.jpeg
set wildignore+=*.jpg
set wildignore+=*.mp4
set wildignore+=*.o
set wildignore+=*.otf
set wildignore+=*.png
set wildignore+=*.properties
set wildignore+=*.pyc
set wildignore+=*.sspj
set wildignore+=*.stamp
set wildignore+=*.svn-base
set wildignore+=*.swc
set wildignore+=*.swf
set wildignore+=*.tgz
set wildignore+=*.ttf
set wildignore+=*.wav
set wildignore+=en_US_embedded.json
set wildignore+=en_us.json
set wildignore+=**/.svn/**

function SwitchToParent(path, parent)
	execute "lcd " . matchstr(a:path, '^.*\/'.a:parent)
endfunction

function EnyoSettings(path)
	call SwitchToParent(a:path, 'enyo')
	set wildignore+=**/alchemy/game/**
	set wildignore+=actionscript/**
	set wildignore+=compile/**
	set wildignore+=conf/**
	set wildignore+=db/**
	set wildignore+=dist/**
	set wildignore+=hooks/**
	set wildignore+=libs/**
	set wildignore+=locks/**
	set wildignore+=playlogs/**
	set wildignore+=project/**
	set wildignore+=simpleclient/**
	set wildignore+=xcodeproj/**
endfunction

function ClientSettings(path)
	call SwitchToParent(a:path, 'client/src')
endfunction

function WCDataSettings(path)
	call SwitchToParent(a:path, 'wc-data')
	set wildignore+=bin/**
	set wildignore+=ftl/**
	set wildignore+=fmscripts*/**
	set wildignore+=libs/**
	set wildignore+=protobufs/**
	set wildignore+=scripts/**
	set wildignore+=**/client-asset-manifest/**
	set wildignore+=**/gamedata-manifest/**
endfunction

function ActionscriptSettings()
	set omnifunc=actionscriptcomplete#CompleteAS
	set dictionary=$HOME/.vim/dict/actionscript.dict
	noremap <C-G> :execute "vimgrep /\\\<" . expand("<cword>") . "\\\>/j **/*.as" <Bar> cw<CR>
	noremap <C-S-F> :execute "vimgrep //j **/*.as" <Bar> cw<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
endfunction

function SwitchToRepoRoot(path, rootparent)
	execute "lcd " . matchstr(a:path, '^.*\/'.a:rootparent.'\/\i\+')
endfunction

function FullWCProjectSettings(path)
	call SwitchToRepoRoot(a:path, 'kixeye/wc')
	
	" Repos
	"set wildignore+=build-tools/**
	"set wildignore+=framework/**
	" Note: Break down gameservices into its components, to include protobufs
	set wildignore+=gameservices/**
	set wildignore+=ltclient/**
	set wildignore+=shared/**

	" Enyo
	set wildignore+=enyo/actionscript/**
	set wildignore+=enyo/compile/**
	set wildignore+=enyo/conf/**
	set wildignore+=enyo/db/**
	set wildignore+=enyo/dist/**
	set wildignore+=enyo/hooks/**
	set wildignore+=enyo/libs/**
	set wildignore+=enyo/locks/**
	set wildignore+=enyo/playlogs/**
	set wildignore+=enyo/project/**
	set wildignore+=enyo/simpleclient/**
	set wildignore+=enyo/xcodeproj/**
	set wildignore+=**/alchemy/game/**

	" Client
	"set wildignore+=client/**
	set wildignore+=client/core/**
	set wildignore+=client/data/**
	set wildignore+=client/feharness/**
	set wildignore+=client/obfuscation/**
	set wildignore+=client/scoreboard/**
	set wildignore+=client/src/bin/**
	set wildignore+=client/src/com/**
	set wildignore+=client/src/nl/**
	set wildignore+=client/src/org/**
	set wildignore+=client/src/staging/embedded/**
	set wildignore+=client/src/staging/manifest/**
	set wildignore+=client/src/staging/playlogs/**
	"set wildignore+=client/src/staging/**
	set wildignore+=client/src/*.as
	set wildignore+=client/test/**
	set wildignore+=client/xbaux/**

	" WC-Data
	set wildignore+=wc-data/bin/**
	set wildignore+=wc-data/ftl/**
	set wildignore+=wc-data/fmscripts*/**
	set wildignore+=wc-data/libs/**
	set wildignore+=wc-data/protobufs/**
	set wildignore+=wc-data/scripts/**
	set wildignore+=**/client-asset-manifest/**
	set wildignore+=**/gamedata-manifest/**
endfunction

function! SwitchSourceHeader()
	if (expand ("%:e") == "cpp" || expand ("%:e") == "c")
		if filereadable(expand("%:p:r").".hpp")
			find %:p:r.hpp
		elseif filereadable(expand("%:p:r").".h")
			find %:p:r.h
  		endif
	else
		if filereadable(expand("%:p:r").".cpp")
			find %:p:r.cpp
		elseif filereadable(expand("%:p:r").".c")
			find %:p:r.c
  		endif
	endif
endfunction

" For a list of autocmd triggers, see:
"http://vimdoc.sourceforge.net/htmldoc/autocmd.html

" Change working directory to current
autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif

if &diff
else
	"autocmd BufEnter * if expand("%:p:h") =~ 'kixeye/wc/*' | call FullWCProjectSettings(expand("%:p:h")) | endif
	autocmd BufEnter * if expand("%:p:h") =~ 'enyo' | call EnyoSettings(expand("%:p:h")) | endif
	"autocmd BufEnter * if expand("%:p:h") =~ 'client/src' | call ClientSettings(expand("%:p:h")) | endif
	autocmd BufEnter * if expand("%:p:h") =~ 'wc-data' | call WCDataSettings(expand("%:p:h")) | endif
endif

"autocmd FileType actionscript call ActionscriptSettings()

autocmd FileType python set tabstop=4 | set softtabstop=4 | set shiftwidth=4 | set noexpandtab

au FocusGained,BufEnter * :silent! !

" omnicppcomplete
"let OmniCpp_MayCompleteDot = 1
"let OmniCpp_MayCompleteArrow = 1
"let OmniCpp_MayCompleteScope = 1
"let OmniCpp_SelectFirstItem = 2
"let OmniCpp_NamespaceSearch = 2
"let OmniCpp_ShowPrototypeInAbbr = 1
"map <F5> :!ctags -R --c++-kinds=+p --fields=+laS --extra=+q .<CR><CR>
"set tags+=./tags
" END omnicppcomplete
let g:SuperTabDefaultCompletionType = "<C-S-space>"
"let g:clang_user_options='|| exit 0'
let g:clang_user_options='2>/dev/null || exit 0'
"let g:clang_use_library = 1
let g:clang_complete_auto = 0 " Whether to start completion on ->, ., ::
let g:clang_complete_copen = 1 " Whether to open quickfix window on error
"set tags+=tags:.
"set tags=~/.vtags

noremap <ESC> :noh<CR><ESC>

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" CTRL+Tab between internal windows
noremap <C-tab> <C-W>w
inoremap <C-tab> <C-O><C-W>w
cnoremap <C-tab> <C-C><C-W>w
noremap <C-S-tab> <C-W><S-W>
inoremap <C-S-tab> <C-O><C-W><S-W>
cnoremap <C-S-tab> <C-C><C-W><S-W>

"map <C-M> :!sml %<CR><C-D>

" Same thing on Mac with iterm2
noremap tab <C-W>w
inoremap tab <C-O><C-W>w
cnoremap tab <C-C><C-W>w
noremap s-tab <C-W><S-W>
inoremap s-tab <C-O><C-W><S-W>
cnoremap s-tab <C-C><C-W><S-W>

" Quick header switch
"noremap <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
"noremap <S-F4> :split %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
"noremap <M-F4> :vsplit %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

noremap <F4> :call SwitchSourceHeader()<CR>

if &diff
	noremap <F5> :diffupdate<CR>
else
	noremap <F5> :CommandT<CR>
	noremap <S-F5> :CommandTFlush<CR>
endif

if &diff
	noremap <F3> ]c
	noremap <S-F3> [c
endif

" CTRL-F4 is Close window
"noremap <C-F4> <C-W>c
"inoremap <C-F4> <C-O><C-W>c
"cnoremap <C-F4> <C-C><C-W>c

" CTRL-Up to scroll the window up one line
noremap <C-Up> <C-Y>
inoremap <C-Up> <C-O><C-Y>
cnoremap <C-Up> <C-C><C-Y>

" CTRL-Down to scroll the window down one line
noremap <C-Down> <C-E>
inoremap <C-Down> <C-O><C-E>

" CTRL-Space to complete word or bring up completion menu (only in insert
" mode)
inoremap <C-Space> <C-X><C-O>
"inoremap <C-Space> <C-P>
" For Mac...
inoremap <C-@> <C-X><C-O>
"inoremap <C-@> <C-P>

" Jump to the last place you edited text or place where the cursor was before
" the last jump command (jump commands are caused by searching, jumping to
" marks, etc.)
" Note: Since Vim uses named marks, this is the closest I could come to
" actually setting bookmarks
noremap <F2> <C-O>
inoremap <F2> <C-O><C-O>
cnoremap <F2> <C-C><C-O>
noremap <S-F2> <C-I>
inoremap <S-F2> <C-O><C-I>
cnoremap <S-F2> <C-C><C-I>

" Find the next/previous change in a diff
noremap <F7> [c
inoremap <F7> <C-O>[c
cnoremap <F7> <C-C>[c
noremap <F8> ]c
inoremap <F8> <C-O>]c
cnoremap <F8> <C-C>]c

noremap <C-G> :execute "noautocmd vimgrep /\\\<" . expand("<cword>") . "\\\>/j **" <Bar> cw<CR>
" Note: putting left here so many times so that the cursor will end up between the slashes
noremap <C-S-F> :execute "noautocmd vimgrep //j **" <Bar> cw<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" Auto-indent every time you paste
noremap p ]p

" Fix the arrow keys in normal mode in the terminal
"nnoremap OA <ESC>ki
"nnoremap OB <ESC>ji
"nnoremap OC <ESC>li
"nnoremap OD <ESC>hi
nnoremap OA k
nnoremap OB j
nnoremap OC l
nnoremap OD h
noremap OA k
noremap OB j
noremap OC l
noremap OD h

" Alt-Arrow to switch between splits
noremap <S-Up> <C-W><Up><C-W>_
noremap <S-Down> <C-W><Down><C-W>_
noremap <S-Left> <C-W><Left><C-W>_
noremap <S-Right> <C-W><Right><C-W>_
inoremap <S-Up> <ESC><C-W><Up><C-W>_
inoremap <S-Down> <ESC><C-W><Down><C-W>_
inoremap <S-Left> <ESC><C-W><Left><C-W>_
inoremap <S-Right> <ESC><C-W><Right><C-W>_
