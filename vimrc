" Default Vim config
set nocompatible

" Vundle installation
filetype off                  " required

" set the runtime path to include Vundle and initialize
if has('win32')
    set rtp+=~/vimfiles/bundle/Vundle.vim
    let path='~/vimfiles/bundle'
else
    set rtp+=~/.vim/bundle/Vundle.vim/
endif
if has('win32')
		" alternatively, pass a path where Vundle should install plugins
    call vundle#begin('~/vimfiles/bundle')
else
call vundle#begin()
endif

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Install taglist
Plugin 'vim-scripts/taglist.vim'
" Taglist config
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
"map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Install NERDTree
Plugin 'scrooloose/nerdtree.git'
map <F2> :NERDTreeToggle<CR>
" Auto close if onlw NERDTree open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Install Powerline : advanced status bar
" Removed because require a font patch
"Plugin 'Lokaltog/powerline'

" Install fugitive to manage GIT
Plugin 'tpope/vim-fugitive'

" Install Syntastic to check syntax error
Plugin 'scrooloose/syntastic.git'

if has('unix')
	" Install YouCompleteMe for autocompletion for several language
	Plugin 'Valloric/YouCompleteMe'
endif

" All of your Plugins must be added before the following line
call vundle#end()            " 

" Personnal config
" Display col/line in bottom right
set ruler

" Enable Syntax highlighting
syntax on

" Search configuration
" Highlight
set hlsearch
" Incremental search
set incsearch
" Auto search case sensitive of case is used during search or \c required
set smartcase

" Indentation
set shiftwidth=4
set softtabstop=4

" Adapt color to dark background
"set background=dark
set background=light
colorscheme evening

" Backspace behaviour
set backspace=indent,eol,start

" Screen size
if has('gui_running')
    if has('win32')
"      set guifont=Lucida_Console:h11
      set guifont=Source_Code_Pro:h11:cANSI
    else
      set guifont=Monospace:h11
    endif
endif

" Enable mouse
set mouse=a

" Set the command/search history
set history=100

" File type management
filetype plugin indent on

au BufNewFile,BufRead *.p51 setf plm
au BufNewFile,BufRead *.a51 setf asm

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

