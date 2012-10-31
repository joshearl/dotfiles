" Pathogen setup

" Pathogen needs to run before plugin indent on
filetype off 
call pathogen#runtime_append_all_bundles()

" generate helptags for everything in 'runtimepath'
call pathogen#helptags() 

set nocompatible

filetype on
filetype plugin on
filetype indent on

" Disable creation of backup files, i.e. File.txt~
set nobackup 
set nowritebackup 
set noswapfile

" Disable wrapping
set nowrap

" Highligh search results incrementally
set incsearch
set showmatch
set hlsearch

" Enable searches to match globally by default
set gdefault

" Create a horizontal rule 
set colorcolumn=85

" highlight line currently being edited
set cursorline

" Enable syntax highlighting
syntax on

" Reenable backspace
set backspace=indent,eol,start

" Autosave when Vim loses focus
"au FocusLost * silent! :wa
autocmd BufLeave,FocusLost * silent! :wa

" Set colorscheme
" colorscheme candy 
" colorscheme elflord
" colorscheme vibratink 
colorscheme vividchalk
" colorscheme desert256
" colorscheme xoria256
" colorscheme zenburn
" colorscheme devbox-dark-256
" colorscheme wombat256
" colorscheme 256-jungle

" Override theme background colors to restore transparency  
" hi Normal ctermbg=NONE 
" hi LineNr ctermbg=NONE 

set t_Co=256

" Disable annoying beeping and blinking
set visualbell t_vb=

" Yank/put from system clipboard by default
set clipboard=unnamed

" Remap leader key to comma
let mapleader=","

" Edit .vimrc and .gvimrc in vertical split
nnoremap <silent><leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <silent><leader>eg <C-w><C-v><C-l>:e $MYGVIMRC<cr>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>sv :so $MYVIMRC<CR> 
nmap <silent> <leader>sg :so $MYGVIMRC<CR>

" Edit pathogen plugins list
nnoremap <leader>ep <C-w><C-v><C-l>:e ~/.vim/update_plugins.rb<cr>

" Map <leader><space> to cancel highlighted search results 
nnoremap <silent><leader><space> :noh<cr>

" Map <space> to page down and shift-space to page up
nmap <silent> <space> <C-d>
nmap <silent> <S-space> <C-u>

" Map <leader>w to window command prefix 
" nmap <silent> <leader>w <C-w>

" Jump back to previous window 
" nmap <silent> <leader>ww <C-w><C-w>

" Open a new vertical split window
nnoremap <silent><leader>w <C-w>v<C-w>l

" Delete buffer without closing window
nmap <leader>bd :bprevious<CR>:bdelete #<CR>

" Insert timestamp
nmap <silent><leader>ts a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>

" Enable easier window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Simpler shortcut for bufExplorer
nnoremap <silent><leader>bb :BufExplorer<cr>

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" Open NERDTree sidebar
nmap <silent><leader>nt :NERDTree<CR>
nmap <silent><leader>nn :NERDTree<CR>

" Limit Command-T window height to 10 lines
" let g:CommandTMaxHeight=10

" Matching files appear at the bottom in Command-T window
" let g:CommandTMatchWindowReverse=1

" Map C-w to open file in split window in Command-T
" let g:CommandTAcceptSelectionSplitMap='<C-w>'

" Force searches to ignore capitalization unless specified in query
set ignorecase
set smartcase

" Enable extra information at the bottom of the screen
set ruler

" Enable line numbers
" set number

" Enable relative line numbers
set relativenumber

" Set matching tag/paren to be bold instead of ugly highlighting
:hi MatchParen cterm=bold ctermbg=none ctermfg=none

set cpoptions+=$

" Enable tabbed expansion of options on the command line
set wildmenu

" Enable proper use of spaces for indenting code
set expandtab
set shiftwidth=2
set softtabstop=2

" Shows current editing mode at bottom of screen
set showmode

" Allow buffers to be hidden without being written first
set hidden

" Create a command to set working directory to path of file in buffer
map <leader>cd :cd %:p:h<CR>:pwd<CR>

" Set working directory to path of file in buffer
" set autochdir


""""" markdown settings """""

" Load .txt files as markdown
au BufRead,BufNewFile *.{txt} set filetype=mkd

" Disable code folding 
autocmd BufNewFile,BufRead *.{txt,md} set nofoldenable

" Set text width to 100 columns 
autocmd BufNewFile,BufRead *.{txt,md} setlocal tw=100 
autocmd BufNewFile,BufRead *.{txt,md} setlocal colorcolumn=100 

" Disable line numbers 
" autocmd BufNewFile,BufRead *.{txt,md} setlocal nonumber 

" Set a left margin and adjust the color 
" autocmd BufNewFile,BufRead *.{txt,md} setlocal foldcolumn=3 
" autocmd BufNewFile,BufRead *.{txt,md} highlight FoldColumn ctermbg=0 ctermfg=0
"autocmd BufNewFile,BufRead *.{txt,md} highlight FoldColumn ctermbg=234 ctermfg=234

""""" markdown end """""

" Commonly used directories


if !exists(":MyBlog")
  :command MyBlog :Sex ~/Dropbox/Apps/scriptogram/
endif

if !exists(":MyWorkspace")
  :command MyWorkspace :Sex ~/Dropbox/Workspace/
endif

if !exists(":MyBook")
  :command MyBook :Sex ~/Dropbox/Leanpub/sublime-productivity/manuscript/
endif
