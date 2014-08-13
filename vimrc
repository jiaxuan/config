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
set listchars=tab:»·,trail:·,eol:¶
set wrap
set expandtab
syntax on
colorscheme slate

set nocompatible
filetype on
filetype off

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

set rtp+=/home/zk8xmsb/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'fholgado/minibufexpl.vim'
Plugin 'garbas/vim-snipmate'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'rking/ag.vim'
Plugin 'rstacruz/sparkup'
Plugin 'scrooloose/nerdtree'
" Plugin 'SirVer/ultisnips'
Plugin 'taiansu/nerdtree-ag'
Plugin 'tmhedberg/matchit'
Plugin 'tomtom/tcomment_vim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'skwp/greplace.vim'
" Plugin 'jlfwong/vim-mercenary'
Plugin 'ludovicchabant/vim-lawrencium'
" Plugin 'Valloric/YouCompleteMe'

call vundle#end()

filetype plugin indent on

let NERDTreeDirArrows=0
let NERDTreeIgnore=['\.o$', '\.a$', '\.so$']
let g:NERDSpaceDelims=1
let g:ctrlp_match_window = 'order:ttb,max:20'
let g:ctrlp_mruf_case_sensitive = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1

map <silent> <c-k> :wincmd k<CR>
map <silent> <c-j> :wincmd j<CR>
map <silent> <c-h> :wincmd h<CR>
map <silent> <c-l> :wincmd l<CR>

map <F4> :TlistToggle<cr>
map <F8> :!/home/zk8xmsb/local/bin/ctags -R --c++-kinds=+p --fields=+isS --extra=+q .<cr>

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
map <leader>L :TlistToggle<CR>
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

"
"
" =========================================================================
" vim-lawrencium
cabbrev hb Hgblame
cabbrev ht Hgstatus
cabbrev hd Hgdiff
