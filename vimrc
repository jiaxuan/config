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
" Plugin 'garbas/vim-snipmate'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'honza/vim-snippets'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'rking/ag.vim'
Plugin 'rstacruz/sparkup'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'taiansu/nerdtree-ag'
Plugin 'tmhedberg/matchit'
Plugin 'tomtom/tcomment_vim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/STL-Syntax'
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
let NERDTreeQuitOnOpen=0
let NERDTreeIgnore=['\.o$', '\.O', '\.a$', '\.so$', '\.rej$', '\.orig$']
let g:NERDSpaceDelims=1
let g:ctrlp_match_window = 'order:ttb,max:20'
let g:ctrlp_mruf_case_sensitive = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1

inoremap jj <esc>

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
map <leader>= :vertical resize +5<CR>
map <leader>- :vertical resize -5<CR>
map <leader>+ :resize +5<CR>
map <leader>_ :resize -5<CR>

" tmp mapping for refactoring
" nnoremap <leader>g ^ct(ctx.add(S<esc>A <esc>$?"<cr>c$\n"));<esc>
" nnoremap <leader>r 0v$:s/%l\{0,2}[sdu]/"))\r.add().add(S("/g<cr><esc>
" nnoremap <leader>y 0f(lyi(
" nnoremap <leader>p ^f(p
" nnoremap <leader>r /ENABLE_TPS_PERF<cr>dd<esc>/else<cr>V/endif<cr>d<esc>
nnoremap <leader>r /ADD_APPENDER<cr>O#ifndef DISABLE_REASONING<esc>/^$<cr>I#endif<esc>

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
    " let g_ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g_ctrlp_user_command = 'ag %s -l -g ""'
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
cabbrev hb Hgblame
cabbrev ht Hgstatus
cabbrev hd Hgdiff

" =========================================================================
" ultisnips
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

" =========================================================================
" gnu global
let GtagsCscope_Auto_Load = 1
let GtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1
set cscopetag

" =========================================================================
" clang_complete
" let g:clang_auto_select=0           " 0: nothing, 1: first, 2: first and insert
" let g:clang_complete_auto=0         " auto complete after ->, ., ::
" let g:clang_hl_errors=1             " hilite errors the same way clang does
" let g:clang_snippets=0              " if 1, add code placeholders for function args and template params
" let g:clang_close_preview=1         " auto close preview after completion
" let g:clang_complete_macros=1       " complete macros and constants
" let g:clang_library_path="/home/zk8xmsb/local/lib"

" =========================================================================
" YouCompleteMe
let g:ycm_global_ycm_extra_conf = $HOME."/ycm/ycm_global_conf.py"
let g:ycm_allow_changing_updatetime = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_always_populate_location_list = 1

let g:ycm_server_log_level = 'info'
"let g:ycm_server_log_level = 'debug'

" highlight YcmErrorSign      cterm fg=190 cterm bg=196
" highlight YcmErrorLine      cterm bg=52
" highlight YcmErrorSection   cterm bg=160
" highlight YcmWarningSign    cterm fg=196 cterm bg=190
" highlight YcmWarningLine    cterm bg=94
" highlight YcmWarningSection cterm bg=136

noremap <silent> <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

