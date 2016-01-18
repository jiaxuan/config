set autoindent
set autoread                    " reload files automatically
set number                      " show line numbers
set smartindent
set hlsearch
set incsearch
set ignorecase
set showcmd
set shiftwidth=4
set smartcase
set softtabstop=4
set tabstop=4
set wildmenu
set wildmode=longest,list,full
" set listchars=tab:»·,trail:·,eol:¶
set listchars=tab:▸·,trail:·,eol:¬
set wrap
set expandtab
syntax on

set nocompatible
filetype on
filetype off

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:UltiSnipsUsePythonVersion = 2

set rtp+=/home/liyi/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'fatih/vim-go'
Plugin 'flazz/vim-colorschemes'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'moll/vim-node'
Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'pangloss/vim-javascript'
Plugin 'rdnetto/YCM-Generator'
Plugin 'rizzatti/dash.vim'
Plugin 'rking/ag.vim'
Plugin 'rstacruz/sparkup'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'skwp/greplace.vim'
Plugin 'taiansu/nerdtree-ag'
Plugin 'ternjs/tern_for_vim'
Plugin 'tmhedberg/matchit'
Plugin 'tomtom/tcomment_vim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/a.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

filetype plugin indent on
colorscheme molokai

let NERDTreeIgnore=['\.o$', '\.a$', '\.so$', '\.swp$']
let g:ctrlp_match_window = 'order:ttb,max:20'
let g:ctrlp_mruf_case_sensitive = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1

inoremap jj <esc>

map <silent> <c-k> :wincmd k<CR>
map <silent> <c-j> :wincmd j<CR>
map <silent> <c-h> :wincmd h<CR>
map <silent> <c-l> :wincmd l<CR>

" map <F4> :TlistToggle<cr>
" map <F8> :!/usr/local/bin/ctags -R --c++-kinds=+p --fields=+isS --extra=+q .<cr>

let mapleader=","
map <leader>m :MBEToggle<CR>
map <leader>a :Ag
map <leader>c :w<CR><c-z>
map <leader>d :NERDTreeToggle<CR>
map <leader>e :%Eval<CR>
map <leader>f :NERDTreeFind<CR>
map <leader>t :CtrlP<CR>
map <leader>b :CtrlPBuffer<CR>
map <leader>h <c-w>h
map <leader>j <c-w>j
map <leader>k <c-w>k
map <leader>l <c-w>l
map <leader>w <c-w><c-w>
map <leader>z <c-z>
map <leader>C :CtrlPClearCache<CR>:CtrlP<CR>
map <leader>; :TagbarToggle<CR>
map <leader>T :Tabularize


" Enable basic mouse behavior such as resizing buffers.
set mouse=a
if exists('$TMUX') " Support resizing in tmux
	set ttymouse=xterm2
endif

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

set background=dark
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=blue  ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

au BufRead,BufNewFile *.hcpp set filetype=cpp

set foldlevel=0
set cinoptions+=(0

" ==========================================================================
" ag.vim
if executable('ag')
	let g:ackprg = 'ag --nogroup --column'

	" Use Ag over Grep
	set grepprg=ag\ --nogroup\ --nocolor

	" Use Ag in CtrlP for listing files
	let g_ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif


" =========================================================================
" vim-indent-object
" <count>ai (A)n (I)ndentation level and line above.
" <count>ii (I)nner (I)ndentation level (no line above).
" <count>aI (A)n (I)ndentation level and lines above/below.
" <count>iI (I)nner (I)ndentation level (no lines above/below).

" =========================================================================
" vim-indent-guide
" <leader>ig  Toggle

" =========================================================================
" greplace.vim
" Use :Gsearch to get a buffer window of your search results then you can make
" the replacements inside the buffer window using traditional tools
" (s/foo/bar/) and invoke :Greplace to make your changes.
if executable('ag')
	set grepprg=ag
	let g:grep_cmd_opts = '--line-numbers -noheading'
endif

" =========================================================================
" vim-lawrencium
" cabbrev hb Hgblame
" cabbrev ht Hgstatus
" cabbrev hd Hgdiff

" =========================================================================
" ultisnips
" Trigger configuration. Do not use <tab> if you use
" let g:UltiSnipsExpandTrigger="<c-space>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

" =========================================================================
" gnu global
" let GtagsCscope_Auto_Load = 1
" let GtagsCscope_Auto_Map = 1
" let GtagsCscope_Quiet = 1
" set cscopetag

