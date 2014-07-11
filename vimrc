" Default Vim config
set nocompatible

" Display col/line
set ruler

" Enable Syntax highlighting
syntax on

" Search configuration
" Highlight
set hlsearch
" Incremental search
set incsearch

" Indentation
set shiftwidth=4
set softtabstop=4

" Adapt color to dark background
set background=dark


" Screen size
if has('gui_running')
  set guifont=Lucida_Console:h11
endif

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

