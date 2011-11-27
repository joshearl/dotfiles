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

" Set colorscheme
if $COLORTERM == 'gnome-terminal'
   set term=gnome-256color
   colorscheme railscasts
else
   colorscheme railscasts
endif

set t_Co=256

" Disable annoying beeping and blinking
set visualbell t_vb=

" Yank/put from system clipboard by default
set clipboard=unnamed

" Remap leader key to comma
let mapleader=","

" Map <leader>n to :nohighlight
nmap <silent> <leader>n :silent :nohlsearch<CR>

" Map <leader>b to toggle between last two buffers
nmap <silent> <leader>b :silent :buffer#<CR>

" Map <CR> to insert blank line in normal mode
nmap <silent> <CR> A<CR><Esc>

" Force searches to ignore capitalization unless specified in query
set ignorecase
set smartcase

" Enable extra information at the bottom of the screen
set ruler

" Enable line numbers
set number

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
map ,cd :cd %:p:h<CR>:pwd<CR>

" Set working directory to path of file in buffer
set autochdir

" Disable creation of backup files, i.e. File.txt~
set nobackup 
set nowritebackup 

" Function enables dollar sign at the end of word when using change word
set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction



